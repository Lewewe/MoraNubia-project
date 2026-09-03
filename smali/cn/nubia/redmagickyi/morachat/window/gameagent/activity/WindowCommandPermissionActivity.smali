.class public Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;
.super Landroid/app/Activity;
.source "WindowCommandPermissionActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowCommandPermissionActivity"

.field private static final WRITE_SETTINGS_PERMISSION_REQ_CODE:I = 0x4d2

.field private static onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;


# instance fields
.field private isWriteSettingsRequsted:Z

.field private permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    return-void
.end method

.method static synthetic access$000()Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;
    .locals 1

    .line 30
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;Lcn/nubia/redmagickyi/util/ZTETimer;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 30
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->gotoSystemSettingsPermission()V

    return-void
.end method

.method private checkPermission()V
    .locals 8

    .line 94
    const-string v0, "checkPermission"

    const-string v1, "WindowCommandPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-nez v0, :cond_1

    .line 100
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const v2, 0x11170

    invoke-direct {v0, v2, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 102
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "requestPermission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-nez v0, :cond_3

    .line 108
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 109
    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)V

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x0

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/redmagickyi/util/ZTETimer;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    :cond_3
    :goto_0
    return-void
.end method

.method private gotoSystemSettingsPermission()V
    .locals 2

    const/16 v0, 0x4d2

    .line 166
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->gotoSystemSettings(Landroid/content/Context;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;)V
    .locals 2

    .line 40
    sput-object p1, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    .line 41
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onPermissionOK()V
    .locals 2

    .line 193
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onPermissionOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    const/4 v1, 0x0

    .line 195
    sput-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;->onPermissionAllow()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->finish()V

    return-void
.end method

.method private requestWriteSettings()V
    .locals 3

    .line 125
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestWriteSettings, canWriteSystemSettings = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowCommandPermissionActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 128
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    .line 130
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->gotoSystemSettingsPermission()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->showPermissionGuide()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->checkPermission()V

    :goto_0
    return-void
.end method

.method private showPermissionGuide()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    sget v1, Lcn/nubia/redmagickyi/main/R$style;->PermissionDialog:I

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_title:I

    .line 142
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u00b7 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->permission_require_write_system_settings:I

    .line 143
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 144
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_go_to_setting:I

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)V

    .line 145
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;)V

    const/high16 v2, 0x1040000

    .line 151
    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->create()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 160
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setMaxHeightRatio(F)V

    .line 162
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 227
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 228
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    :cond_0
    const/4 v0, 0x1

    .line 233
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->moveTaskToBack(Z)Z

    .line 234
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->finishAffinity()V

    return-void
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 60
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 204
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "onActivityResult, requestCode = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "WindowCommandPermissionActivity"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x4d2

    if-ne p1, p2, :cond_0

    .line 207
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 208
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->checkPermission()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    const-string p0, "WindowCommandPermissionActivity"

    const-string p1, "onConfigurationChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/util/KeyguardUtil;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 70
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 71
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->requestWindowFeature(I)Z

    .line 73
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isNavigationBarShowing(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->hideBottomUIMenu()V

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    const-string p0, "WindowCommandPermissionActivity"

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPermissionGuideDisallow()V
    .locals 2

    .line 182
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onPermissionGuideDisallow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 184
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    const/4 v1, 0x0

    .line 185
    sput-object v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;->onPermissionDisallow()V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->finish()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 2

    .line 176
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onPermissionRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 1

    .line 171
    const-string p0, "WindowCommandPermissionActivity"

    const-string v0, "onPermissionRequesting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 216
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/activity/WindowCommandPermissionActivity;->requestWriteSettings()V

    return-void
.end method
