.class public abstract Lcn/nubia/oauthsdk/ui/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field private isInit:Z

.field private mListener:Landroid/view/View$OnClickListener;

.field protected mTitleBarView:Lcn/nubia/oauthsdk/ui/MyTitleBarView;

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity;->isInit:Z

    .line 54
    new-instance v0, Lcn/nubia/oauthsdk/ui/BaseActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/oauthsdk/ui/BaseActivity$1;-><init>(Lcn/nubia/oauthsdk/ui/BaseActivity;)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity;->mListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initTitleBar()V
    .locals 1

    .line 36
    sget v0, Lcn/nubia/mergesdk/R$id;->tb:I

    invoke-virtual {p0, v0}, Lcn/nubia/oauthsdk/ui/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/oauthsdk/ui/MyTitleBarView;

    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity;->mTitleBarView:Lcn/nubia/oauthsdk/ui/MyTitleBarView;

    .line 37
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Lcn/nubia/oauthsdk/ui/MyTitleBarView;->setLeftTextOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public abstract getContentView()I
.end method

.method public hideSoftInput()V
    .locals 2

    .line 98
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcn/nubia/oauthsdk/ui/BaseActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/oauthsdk/ui/BaseActivity$2;-><init>(Lcn/nubia/oauthsdk/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity;->startTime:J

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=onCreate()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 25
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "onCreate"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcn/nubia/oauthsdk/ui/BaseActivity;->getContentView()I

    move-result p1

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/BaseActivity;->setContentView(I)V

    .line 30
    invoke-direct {p0}, Lcn/nubia/oauthsdk/ui/BaseActivity;->initTitleBar()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "=========onDestroy()========"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 91
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "=========onPause()========"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=onResume()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcn/nubia/oauthsdk/ui/BaseActivity;->isInit:Z

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 75
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "=========onStart()========"

    invoke-static {p0, v0}, Lcn/nubia/accountsdk/common/SDKLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTitleText(I)V
    .locals 0

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/BaseActivity;->setTitleViewVisible(Z)V

    return-void
.end method

.method public setTitleText(II)V
    .locals 0

    const/4 p1, 0x1

    .line 46
    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/BaseActivity;->setTitleViewVisible(Z)V

    return-void
.end method

.method public setTitleViewVisible(Z)V
    .locals 0

    return-void
.end method
