.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;
.super Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.source "AccountController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->updateNubiaAcctInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Landroid/content/Context;Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$fullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 148
    invoke-super {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 5

    .line 110
    const-string v0, ""

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    return-void

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getUsername()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 123
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 125
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 129
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v0}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 134
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v1, v2

    .line 138
    :cond_3
    sput-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSystemAcctInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    .line 139
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$fullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    .line 140
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    const-string p1, "pref_acct_info"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 141
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 142
    const-string p1, "pref_nubia_acct"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " | errorMsg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/nbaccount/SDKLogUtils;->i(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    const-string p2, ""

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    iget-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->val$context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/AccountController;Lcn/nubia/accountsdk/fullclient/AccountFullClient;)V

    return-void
.end method
