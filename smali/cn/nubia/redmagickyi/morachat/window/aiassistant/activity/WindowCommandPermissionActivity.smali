.class public Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;
.super Landroid/app/Activity;
.source "WindowCommandPermissionActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WRITE_SETTINGS_PERMISSION_REQ_CODE:I = 0x4d2

.field private static onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;


# instance fields
.field private isWriteSettingsRequsted:Z

.field private permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

.field private zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowCommandPermissionActivity-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/nubia/redmagickyi/morachat/main/scene/Scene;->WINDOW_AIASSISTANT:Lcn/nubia/redmagickyi/morachat/main/scene/Scene;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    return-void
.end method

.method static synthetic access$000()Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;
    .locals 1

    .line 31
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-object p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;Lcn/nubia/redmagickyi/util/ZTETimer;)Lcn/nubia/redmagickyi/util/ZTETimer;
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->gotoSystemSettingsPermission()V

    return-void
.end method

.method private checkPermission()V
    .locals 8

    .line 95
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "checkPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    .line 98
    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    .line 100
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-nez v1, :cond_1

    .line 101
    new-instance v1, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const v2, 0x11170

    invoke-direct {v1, v2, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 103
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v1, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 104
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    goto :goto_0

    .line 106
    :cond_2
    const-string v1, "requestPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    .line 108
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-nez v0, :cond_3

    .line 109
    new-instance v1, Lcn/nubia/redmagickyi/util/ZTETimer;

    invoke-direct {v1}, Lcn/nubia/redmagickyi/util/ZTETimer;-><init>()V

    iput-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    .line 110
    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V

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

    .line 167
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->gotoSystemSettings(Landroid/content/Context;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;)V
    .locals 2

    .line 41
    sput-object p1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    .line 42
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onPermissionOK()V
    .locals 2

    .line 194
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPermissionOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    const/4 v1, 0x0

    .line 196
    sput-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;->onPermissionAllow()V

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->finish()V

    return-void
.end method

.method private requestWriteSettings()V
    .locals 4

    .line 126
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v0

    .line 127
    sget-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestWriteSettings, canWriteSystemSettings = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 129
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    .line 131
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->gotoSystemSettingsPermission()V

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->showPermissionGuide()V

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->checkPermission()V

    :goto_0
    return-void
.end method

.method private showPermissionGuide()V
    .locals 3

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    sget v1, Lcn/nubia/redmagickyi/main/R$style;->PermissionDialog:I

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_title:I

    .line 143
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u00b7 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->permission_require_write_system_settings:I

    .line 144
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_go_to_setting:I

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$3;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$3;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V

    .line 146
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;)V

    const/high16 v2, 0x1040000

    .line 152
    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->create()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 161
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setMaxHeightRatio(F)V

    .line 163
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 228
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 229
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->cancel()V

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->zteTimer:Lcn/nubia/redmagickyi/util/ZTETimer;

    :cond_0
    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->moveTaskToBack(Z)Z

    .line 235
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->finishAffinity()V

    return-void
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 59
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 61
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 206
    sget-object p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult, requestCode = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x4d2

    if-ne p1, p2, :cond_0

    .line 208
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->checkPermission()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string p1, "onConfigurationChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcn/nubia/redmagickyi/util/KeyguardUtil;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->requestWindowFeature(I)Z

    .line 74
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isNavigationBarShowing(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 77
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->hideBottomUIMenu()V

    :cond_2
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 91
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPermissionGuideDisallow()V
    .locals 2

    .line 183
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPermissionGuideDisallow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 185
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    const/4 v1, 0x0

    .line 186
    sput-object v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionResultCallback:Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity$OnPermissionResultCallback;->onPermissionDisallow()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->finish()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 2

    .line 177
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPermissionRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 1

    .line 172
    sget-object p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v0, "onPermissionRequesting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 216
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 217
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    sget-object v0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/activity/WindowCommandPermissionActivity;->requestWriteSettings()V

    return-void
.end method
