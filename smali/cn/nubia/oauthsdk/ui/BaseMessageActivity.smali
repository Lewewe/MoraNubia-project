.class public abstract Lcn/nubia/oauthsdk/ui/BaseMessageActivity;
.super Lcn/nubia/oauthsdk/ui/BaseActivity;
.source "BaseMessageActivity.java"


# instance fields
.field protected isIntercepor:Z

.field private mDialog:Landroid/app/Dialog;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->isIntercepor:Z

    return-void
.end method

.method private hideProgreessNull()V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->hideProgress()V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    return-object p0
.end method

.method public hideProgress()V
    .locals 0

    return-void
.end method

.method public isActivityFinish()Z
    .locals 0

    .line 103
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->isFinishing()Z

    move-result p0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcn/nubia/oauthsdk/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->hideProgreessNull()V

    .line 121
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 126
    :cond_1
    invoke-super {p0}, Lcn/nubia/oauthsdk/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method public showMessage(I)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->isActivityFinish()Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 88
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mToast:Landroid/widget/Toast;

    .line 90
    :goto_0
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/BaseMessageActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 92
    :catch_0
    const-string p0, "showMessage e"

    invoke-static {p0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
