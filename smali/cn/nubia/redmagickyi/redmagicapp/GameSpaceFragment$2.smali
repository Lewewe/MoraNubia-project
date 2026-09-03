.class Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;
.super Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;
.source "GameSpaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->updateNubiaAcctInfo(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;Lcn/nubia/accountsdk/fullclient/AccountFullClient;Landroid/content/Context;)V
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

    .line 188
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iput-object p2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->val$fullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    iput-object p3, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 244
    invoke-super {p0}, Lcn/nubia/accountsdk/aidl/IGetAccountInfoListener$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onComplete(Lcn/nubia/accountsdk/aidl/SystemAccountInfo;)V
    .locals 5

    if-nez p1, :cond_0

    .line 202
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$2;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$2;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;)V

    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->getUserId(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V

    return-void

    .line 212
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p1}, Lcn/nubia/accountsdk/aidl/SystemAccountInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    .line 214
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->access$100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onComplete: nickName "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_4

    .line 218
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/redmagickyi/util/Utils;->getNubiaUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 219
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 220
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 224
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    invoke-static {v2}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->access$100(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "onComplete: account changed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/util/Utils;->setNubiaUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object v2, v2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/util/Utils;->updateLoginToken(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 230
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    .line 234
    :goto_1
    sput-object p1, Lcn/nubia/redmagickyi/network/NetworkUtils;->mSystemAcctInfo:Lcn/nubia/accountsdk/aidl/SystemAccountInfo;

    .line 235
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object v2, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->val$fullClient:Lcn/nubia/accountsdk/fullclient/AccountFullClient;

    invoke-static {p1, v2, v1, v0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->access$000(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;Lcn/nubia/accountsdk/fullclient/AccountFullClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->val$context:Landroid/content/Context;

    const-string p1, "pref_acct_info"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 237
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 238
    const-string p1, "pref_nubia_acct"

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2

    .line 191
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

    .line 192
    iget-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;->this$0:Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;

    iget-object p1, p1, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment;->mContext:Landroid/app/Activity;

    new-instance p2, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$1;

    invoke-direct {p2, p0}, Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2$1;-><init>(Lcn/nubia/redmagickyi/redmagicapp/GameSpaceFragment$2;)V

    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/util/NubiaAccountManager;->getUserId(Landroid/content/Context;Lcn/nubia/redmagickyi/util/NubiaAccountManager$OnUserIdCallback;)V

    return-void
.end method
