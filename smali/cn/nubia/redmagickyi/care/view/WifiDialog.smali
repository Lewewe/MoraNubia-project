.class public Lcn/nubia/redmagickyi/care/view/WifiDialog;
.super Ljava/lang/Object;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;,
        Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;,
        Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;,
        Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;
    }
.end annotation


# static fields
.field private static final REQ_ACCESS_FINE_LOCATION_PERMISSIONS:I = 0x2711

.field private static final REQ_LOCATION:I = 0x2712

.field private static final TAG:Ljava/lang/String; = "WifiDialog"


# instance fields
.field private context:Landroid/app/Activity;

.field private isGPSpermissionRequesting:Z

.field private wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

.field private wifiListDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    .line 52
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiListDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;-><init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiListDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;

    :cond_0
    return-void
.end method

.method private OpenGpsSwitch()Z
    .locals 1

    .line 149
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    .line 150
    invoke-virtual {p0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/view/WifiDialog;)Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcn/nubia/redmagickyi/care/view/WifiDialog;Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;)Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/care/view/WifiDialog;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->gotoSettingCenter()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/care/view/WifiDialog;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->showWifiGpsPermissionDialog()V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/care/view/WifiDialog;)Landroid/app/Activity;
    .locals 0

    .line 41
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    return-object p0
.end method

.method private gotoOpenGpsSettings()V
    .locals 2

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    const/16 v1, 0x2712

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private gotoSettingCenter()V
    .locals 4

    .line 137
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private show()V
    .locals 3

    .line 85
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    :try_start_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    invoke-static {v1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/16 v0, 0x2711

    invoke-static {p0, v1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->OpenGpsSwitch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->isGPSpermissionRequesting:Z

    .line 89
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->gotoOpenGpsSettings()V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiListDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private showWifiGpsPermissionDialog()V
    .locals 7

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    new-instance v4, Lcn/nubia/redmagickyi/care/view/WifiDialog$1;

    invoke-direct {v4, p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$1;-><init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;)V

    new-instance v5, Lcn/nubia/redmagickyi/care/view/WifiDialog$2;

    invoke-direct {v5, p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$2;-><init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->gps_open_notice:I

    .line 71
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;-><init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnGoCommitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    .line 73
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->show()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 0

    .line 99
    const-string p2, "onRequestPermissionsResult"

    const-string p3, "WifiDialog"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x2711

    if-ne p1, p2, :cond_1

    .line 101
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p1, p2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    const-string p1, "onRequestPermissionsResult not have ACCESS_FINE_LOCATION"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcn/nubia/redmagickyi/util/AppExecutors;->getInstance()Lcn/nubia/redmagickyi/util/AppExecutors;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/util/AppExecutors;->mainThread()Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;

    move-result-object p1

    new-instance p2, Lcn/nubia/redmagickyi/care/view/WifiDialog$3;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$3;-><init>(Lcn/nubia/redmagickyi/care/view/WifiDialog;)V

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/util/AppExecutors$MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 110
    :cond_0
    const-string p1, "onRequestPermissionsResult has ACCESS_FINE_LOCATION"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->show()V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowWifiDialog()Z
    .locals 4

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->context:Landroid/app/Activity;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;->dismiss()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiGpsPermissionDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiGpsPermissionDialog;

    .line 123
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->show()V

    return v1

    .line 126
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->isGPSpermissionRequesting:Z

    if-eqz v0, :cond_1

    .line 127
    iput-boolean v2, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->isGPSpermissionRequesting:Z

    .line 128
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->OpenGpsSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->show()V

    return v1

    :cond_1
    return v2
.end method

.method public show(Ljava/lang/String;Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->isGPSpermissionRequesting:Z

    .line 78
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiListDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->setCurWifiName(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/view/WifiDialog;->wifiListDialog:Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;

    invoke-virtual {p1, p2}, Lcn/nubia/redmagickyi/care/view/WifiDialog$WifiListDialog;->setOnItemClickListener(Lcn/nubia/redmagickyi/care/view/WifiDialog$OnWifiItemClickListener;)V

    .line 80
    invoke-direct {p0}, Lcn/nubia/redmagickyi/care/view/WifiDialog;->show()V

    return-void
.end method
