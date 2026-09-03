.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;
.super Landroid/app/Activity;
.source "WindowCommandPermissionActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/permission/PermissionUtil$Callback;


# static fields
.field public static final ACTION_WINDOW_PERMISSION_CHECK:Ljava/lang/String; = "intent.action.redmagickyi.window.permission.check"

.field private static final BUNDLE_SAVED:Ljava/lang/String; = "bundle_saved"

.field public static final KEY_WINDOW_PERMISSION_CHECK:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "WindowCommandPermissionActivity"

.field private static final WRITE_SETTINGS_PERMISSION_REQ_CODE:I = 0x4d2


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private isWriteSettingsRequsted:Z

.field private permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

.field private permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;
    .locals 0

    .line 30
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->gotoSystemSettingsPermission()V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    .line 97
    const-string v0, "checkPermission"

    const-string v1, "WindowCommandPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    .line 102
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcn/nubia/redmagickyi/permission/PermissionUtil;

    const v2, 0x11170

    invoke-direct {v0, v2, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;-><init>(ILcn/nubia/redmagickyi/permission/PermissionUtil$Callback;)V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    .line 105
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->notHasAllPermissionOfRuntime(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    goto :goto_0

    .line 108
    :cond_2
    const-string v0, "requestPermission"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->requestPermission(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method private gotoSystemSettingsPermission()V
    .locals 2

    const/16 v0, 0x4d2

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->gotoSystemSettings(Landroid/content/Context;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static launch(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 44
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onPermissionOK()V
    .locals 2

    .line 178
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onPermissionOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->bundle:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->sendBroadcast(Landroid/os/Bundle;Z)V

    .line 180
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->finish()V

    return-void
.end method

.method private requestWriteSettings()V
    .locals 3

    .line 114
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result v0

    .line 115
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

    .line 117
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->isWriteSettingsRequsted:Z

    .line 119
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->gotoSystemSettingsPermission()V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->showPermissionGuide()V

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->checkPermission()V

    :goto_0
    return-void
.end method

.method private showPermissionGuide()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    sget v1, Lcn/nubia/redmagickyi/main/R$style;->PermissionDialog:I

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_title:I

    .line 131
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setTitle(I)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u00b7 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcn/nubia/redmagickyi/main/R$string;->permission_require_write_system_settings:I

    .line 132
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$string;->permission_guide_go_to_setting:I

    new-instance v2, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity$2;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;)V

    .line 134
    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity$1;-><init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;)V

    const/high16 v2, 0x1040000

    .line 140
    invoke-virtual {v0, v2, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;->create()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 149
    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setMaxHeightRatio(F)V

    .line 151
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionGuideAlertDialog:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 237
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 238
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 239
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->moveTaskToBack(Z)Z

    .line 240
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->finishAffinity()V

    return-void
.end method

.method public hideBottomUIMenu()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
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

    .line 188
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/SettingsProviderUtils;->canWriteSystemSettings(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->checkPermission()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 231
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 232
    const-string p0, "WindowCommandPermissionActivity"

    const-string p1, "onConfigurationChanged"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowCommandPermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {}, Lcn/nubia/redmagickyi/util/KeyguardUtil;->ScreenUnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 68
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->requestWindowFeature(I)Z

    .line 70
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isNavigationBarShowing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcn/nubia/redmagickyi/util/CommonUtils;->isStatusBarShowing(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->hideBottomUIMenu()V

    :cond_2
    if-eqz p1, :cond_3

    .line 76
    const-string v0, "bundle_saved"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->bundle:Landroid/os/Bundle;

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 79
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->bundle:Landroid/os/Bundle;

    :cond_4
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V
    .locals 1

    .line 196
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;Landroid/app/ComponentCaller;)V

    .line 197
    const-string p2, "WindowCommandPermissionActivity"

    const-string v0, "onNewIntent"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 199
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    const-string p0, "WindowCommandPermissionActivity"

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPermissionGuideDisallow()V
    .locals 2

    .line 171
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onPermissionGuideDisallow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    sget v0, Lcn/nubia/redmagickyi/main/R$string;->permission_missing_required:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;II)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    .line 173
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->sendBroadcast(Landroid/os/Bundle;Z)V

    .line 174
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->finish()V

    return-void
.end method

.method public onPermissionRequested()V
    .locals 2

    .line 165
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onPermissionRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->onPermissionOK()V

    return-void
.end method

.method public onPermissionRequesting()V
    .locals 1

    .line 160
    const-string p0, "WindowCommandPermissionActivity"

    const-string v0, "onPermissionRequesting"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 225
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 226
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->permissionUtil:Lcn/nubia/redmagickyi/permission/PermissionUtil;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    const-string v0, "WindowCommandPermissionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->requestWriteSettings()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 205
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->bundle:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 207
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 208
    const-string v0, "bundle_saved"

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/activity/WindowCommandPermissionActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public sendBroadcast(Landroid/os/Bundle;Z)V
    .locals 1

    .line 213
    new-instance p0, Landroid/content/Intent;

    const-string v0, "intent.action.redmagickyi.window.permission.check"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 217
    :cond_0
    const-string p1, "result"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 218
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
