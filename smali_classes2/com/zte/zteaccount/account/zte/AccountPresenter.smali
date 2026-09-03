.class public Lcom/zte/zteaccount/account/zte/AccountPresenter;
.super Ljava/lang/Object;
.source "AccountPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;
    }
.end annotation


# static fields
.field public static final ACCOUNT_CODE:I = 0x6f

.field public static final ACCOUNT_MANAGE:I = 0x70

.field public static final NO_ACCOUNT:Ljava/lang/String; = "NO ACCOUNT"


# instance fields
.field private callback:Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;

.field public mBackGroud:Z

.field private mContext:Landroid/content/Context;

.field private myService:Lorg/zx/AuthComp/IMyService;

.field private serviceConnection:Landroid/content/ServiceConnection;

.field public synType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->myService:Lorg/zx/AuthComp/IMyService;

    .line 30
    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    .line 83
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->mContext:Landroid/content/Context;

    .line 84
    iput-boolean p2, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->mBackGroud:Z

    .line 85
    iput p3, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->synType:I

    return-void
.end method

.method static synthetic access$002(Lcom/zte/zteaccount/account/zte/AccountPresenter;Lorg/zx/AuthComp/IMyService;)Lorg/zx/AuthComp/IMyService;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->myService:Lorg/zx/AuthComp/IMyService;

    return-object p1
.end method

.method private initServiceConnection()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    return-void

    .line 53
    :cond_0
    new-instance v0, Lcom/zte/zteaccount/account/zte/AccountPresenter$1;

    invoke-direct {v0, p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter$1;-><init>(Lcom/zte/zteaccount/account/zte/AccountPresenter;)V

    iput-object v0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method


# virtual methods
.method public bindService()Z
    .locals 5

    .line 129
    const-string v0, "AccountPresenter"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.zx.AuthComp.IMyService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v2, "org.zx.AuthComp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-direct {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->initServiceConnection()V

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 137
    const-string v2, "bindService failed"

    invoke-static {v0, v2, v1}, Lcom/zte/aigc/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 140
    iget-object v2, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->myService:Lorg/zx/AuthComp/IMyService;

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->initAccount()V

    .line 143
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindService:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",serviceConnection:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zte/aigc/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;
    .locals 7

    const/4 v0, 0x0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->myService:Lorg/zx/AuthComp/IMyService;

    if-nez v1, :cond_0

    return-object v0

    .line 102
    :cond_0
    invoke-interface {v1}, Lorg/zx/AuthComp/IMyService;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 103
    const-string v2, "uid"

    invoke-virtual {p0, v2, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string v3, "nickname"

    invoke-virtual {p0, v3, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    const-string v4, "username"

    invoke-virtual {p0, v4, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    const-string v5, "mobile"

    invoke-virtual {p0, v5, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    const-string v6, "token"

    invoke-virtual {p0, v6, v1}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 109
    new-instance v1, Lcom/zte/zteaccount/account/AccountInfo;

    invoke-direct {v1, v2, v4, p0}, Lcom/zte/zteaccount/account/AccountInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v1, v3}, Lcom/zte/zteaccount/account/AccountInfo;->setNickName(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, v5}, Lcom/zte/zteaccount/account/AccountInfo;->setMobile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method public getAccountKeyValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 90
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 94
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public getLoginBundle()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->myService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {p0}, Lorg/zx/AuthComp/IMyService;->startLoginActivity()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public initAccount()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v0

    .line 42
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->callback:Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;

    if-eqz p0, :cond_0

    .line 43
    invoke-interface {p0, v0}, Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;->onAccountObtain(Lcom/zte/zteaccount/account/AccountInfo;)V

    .line 44
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "initAccount() evtGetAccout:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccountPresenter"

    invoke-static {v0, p0}, Lcom/zte/aigc/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Lcom/zte/zteaccount/account/AccountInfo;
    .locals 0

    const/16 p2, 0x6f

    if-ne p1, p2, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->getAccountInfo()Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setAccountCB(Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->callback:Lcom/zte/zteaccount/account/zte/AccountPresenter$AccountCallback;

    return-void
.end method

.method public startLoginActivity(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->myService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {p0}, Lorg/zx/AuthComp/IMyService;->startLoginActivity()Landroid/os/Bundle;

    move-result-object p0

    .line 72
    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    .line 73
    const-string v0, "invoker"

    const-string v1, "ZMemberCenter"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000000

    .line 77
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public unBindShareService()V
    .locals 5

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unBindShareService:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountPresenter"

    invoke-static {v1, v0}, Lcom/zte/aigc/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v3, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unBindShareService failed. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/aigc/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    iput-object v2, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->serviceConnection:Landroid/content/ServiceConnection;

    .line 157
    :cond_0
    iput-object v2, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter;->myService:Lorg/zx/AuthComp/IMyService;

    return-void
.end method
