package com.example.testcase;

import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;
import android.view.Gravity;
import android.widget.Toast;

public class MainActivity extends Activity {
	private Context mContext = null;
	private static String apkFile = "tiantianxiaobaoshi_27.apk";
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        
        mContext = this;
        
        testParameter("hello", "world", "yes");
    }    
    private boolean isInstallAllowed(String packageName){
    	boolean result = false;
    	Log.e("dooioocc", "0");
    	if(packageName == null || packageName.equals("")){
    		return false;
    	}
    	Log.e("dooioocc", packageName);
    	try{
    		Log.e("dooioocc", "1");
    		Context otherContext = mContext.createPackageContext("com.example.testsp", 
    				Context.CONTEXT_IGNORE_SECURITY);
    		Log.e("dooioocc", "2");
        	SharedPreferences sp = otherContext.getSharedPreferences("com.dooioo.whitelist",
        			Context.MODE_PRIVATE);
        	
        	Log.e("dooioocc", "2.5");
        	String content = sp.getString("pknames", null);
        	
        	Log.e("dooioocc", "3");
        	if(content != null && content.length() > 0){
        		Log.e("dooioocc", "4");        		
        		String[] packageList = content.split(";");
        		
        		for(String c : packageList){
        			if(c.equals(packageName)){
        				result = true;
        				Log.e("dooioocc", "catch the whitelist!!!");  
        				break;
        			}
        		}
        		Log.e("dooioocc", "5");   
        	}
        	
    	}catch(Exception e){
    		Log.e("dooioocc", "exception");   
    		e.printStackTrace();
    	}
    	Log.e("dooioocc", "6");   
    	
    	if(!result){
    		Log.e("dooioocc", "Not catch the whitelist");  
    		
    		Toast tst = Toast.makeText(mContext, "由于安全原因，德祐系统禁止安装此程序", Toast.LENGTH_LONG);
    		tst.setGravity(Gravity.CENTER_HORIZONTAL | Gravity.CENTER_VERTICAL, 0, 0);
    		tst.show();
    	}else{
    		Log.e("dooioocc", "Yes, catch the whitelist");
    	}
    	return result;
    }
    private void callUrl(Uri uri){
    	PackageManager pm = getPackageManager();
    	
        try {
        	 String filePath = Environment.getExternalStorageDirectory() + "/" + apkFile; 

            PackageInfo ai =  pm.getPackageArchiveInfo(filePath, PackageManager.GET_CONFIGURATIONS);
            String name = ai.packageName;
            Log.e("cc", name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    	Log.e("dooioocc", "100");
    	String out = uri.toString();
    	Log.e("dooioocc", out);
    	Log.e("dooioocc", "101");
    }
    private void testParameter(String v1, String v2, String v3){
    	String l1 = v1;
    	String l2 = v2;
    	String l3 = v3;
    	
    	Log.e("cc", l1);
    }
    @Override
    public void onResume(){
    	super.onResume();
    	
    	Uri uri = Uri.parse("file:///storage/emulated/0/tiantianxiaobaoshi_27.apk");
    	
    	callUrl(uri);

    	boolean ret = isInstallAllowed("com.dooioo.example91");
    	if(ret){
    		Log.e("dooioocc", "find the target");
    	}else{
    		Log.e("dooioocc", "Not !find the target");
    	}
    }
}
