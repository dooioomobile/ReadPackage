.class public Lcom/example/testcase/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static apkFile:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "tiantianxiaobaoshi_27.apk"

    sput-object v0, Lcom/example/testcase/MainActivity;->apkFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/example/testcase/MainActivity;->mContext:Landroid/content/Context;

    .line 17
    return-void
.end method

.method private callUrl(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/example/testcase/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 83
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/example/testcase/MainActivity;->apkFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, filePath:Ljava/lang/String;
    const/16 v6, 0x4000

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 86
    .local v0, ai:Landroid/content/pm/PackageInfo;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 87
    .local v3, name:Ljava/lang/String;
    const-string v6, "cc"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0           #ai:Landroid/content/pm/PackageInfo;
    .end local v2           #filePath:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :goto_0
    const-string v6, "dooioocc"

    const-string v7, "100"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, out:Ljava/lang/String;
    const-string v6, "dooioocc"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v6, "dooioocc"

    const-string v7, "101"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    .line 88
    .end local v4           #out:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 89
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isInstallAllowed(Ljava/lang/String;)Z
    .locals 12
    .parameter "packageName"

    .prologue
    const/4 v8, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    .local v5, result:Z
    const-string v9, "dooioocc"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    if-eqz p1, :cond_0

    const-string v9, ""

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v8

    .line 35
    :cond_1
    const-string v9, "dooioocc"

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :try_start_0
    const-string v9, "dooioocc"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v9, p0, Lcom/example/testcase/MainActivity;->mContext:Landroid/content/Context;

    const-string v10, "com.example.testsp"

    .line 39
    const/4 v11, 0x2

    .line 38
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 40
    .local v3, otherContext:Landroid/content/Context;
    const-string v9, "dooioocc"

    const-string v10, "2"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const-string v9, "com.dooioo.whitelist"

    .line 42
    const/4 v10, 0x0

    .line 41
    invoke-virtual {v3, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 44
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v9, "dooioocc"

    const-string v10, "2.5"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string v9, "pknames"

    const/4 v10, 0x0

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, content:Ljava/lang/String;
    const-string v9, "dooioocc"

    const-string v10, "3"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 49
    const-string v9, "dooioocc"

    const-string v10, "4"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v9, ";"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, packageList:[Ljava/lang/String;
    array-length v10, v4

    move v9, v8

    :goto_1
    if-lt v9, v10, :cond_3

    .line 59
    :goto_2
    const-string v9, "dooioocc"

    const-string v10, "5"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #otherContext:Landroid/content/Context;
    .end local v4           #packageList:[Ljava/lang/String;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_2
    :goto_3
    const-string v9, "dooioocc"

    const-string v10, "6"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-nez v5, :cond_5

    .line 69
    const-string v9, "dooioocc"

    const-string v10, "Not catch the whitelist"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v9, p0, Lcom/example/testcase/MainActivity;->mContext:Landroid/content/Context;

    const-string v10, "\u7531\u4e8e\u5b89\u5168\u539f\u56e0\uff0c\u5fb7\u7950\u7cfb\u7edf\u7981\u6b62\u5b89\u88c5\u6b64\u7a0b\u5e8f"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 72
    .local v7, tst:Landroid/widget/Toast;
    const/16 v9, 0x11

    invoke-virtual {v7, v9, v8, v8}, Landroid/widget/Toast;->setGravity(III)V

    .line 73
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .end local v7           #tst:Landroid/widget/Toast;
    :goto_4
    move v8, v5

    .line 77
    goto :goto_0

    .line 52
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #otherContext:Landroid/content/Context;
    .restart local v4       #packageList:[Ljava/lang/String;
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    :cond_3
    :try_start_1
    aget-object v0, v4, v9

    .line 53
    .local v0, c:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 54
    const/4 v5, 0x1

    .line 55
    const-string v9, "dooioocc"

    const-string v10, "catch the whitelist!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 62
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #otherContext:Landroid/content/Context;
    .end local v4           #packageList:[Ljava/lang/String;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    .line 63
    .local v2, e:Ljava/lang/Exception;
    const-string v9, "dooioocc"

    const-string v10, "exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 52
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #c:Ljava/lang/String;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #otherContext:Landroid/content/Context;
    .restart local v4       #packageList:[Ljava/lang/String;
    .restart local v6       #sp:Landroid/content/SharedPreferences;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 75
    .end local v0           #c:Ljava/lang/String;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #otherContext:Landroid/content/Context;
    .end local v4           #packageList:[Ljava/lang/String;
    .end local v6           #sp:Landroid/content/SharedPreferences;
    :cond_5
    const-string v8, "dooioocc"

    const-string v9, "Yes, catch the whitelist"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private testParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "v1"
    .parameter "v2"
    .parameter "v3"

    .prologue
    .line 98
    move-object v0, p1

    .line 99
    .local v0, l1:Ljava/lang/String;
    move-object v1, p2

    .line 100
    .local v1, l2:Ljava/lang/String;
    move-object v2, p3

    .line 102
    .local v2, l3:Ljava/lang/String;
    const-string v3, "cc"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/example/testcase/MainActivity;->setContentView(I)V

    .line 25
    iput-object p0, p0, Lcom/example/testcase/MainActivity;->mContext:Landroid/content/Context;

    .line 27
    const-string v0, "hello"

    const-string v1, "world"

    const-string v2, "yes"

    invoke-direct {p0, v0, v1, v2}, Lcom/example/testcase/MainActivity;->testParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 108
    const-string v2, "file:///storage/emulated/0/tiantianxiaobaoshi_27.apk"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, uri:Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/example/testcase/MainActivity;->callUrl(Landroid/net/Uri;)V

    .line 112
    const-string v2, "com.dooioo.example91"

    invoke-direct {p0, v2}, Lcom/example/testcase/MainActivity;->isInstallAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, ret:Z
    if-eqz v0, :cond_0

    .line 114
    const-string v2, "dooioocc"

    const-string v3, "find the target"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    const-string v2, "dooioocc"

    const-string v3, "Not !find the target"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
