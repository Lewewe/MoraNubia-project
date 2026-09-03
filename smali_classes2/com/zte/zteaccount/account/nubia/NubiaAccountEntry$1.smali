.class Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;
.super Ljava/lang/Object;
.source "NubiaAccountEntry.java"

# interfaces
.implements Lcom/zte/zteaccount/AccountLoginInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->onGetAccountInfo(Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

.field final synthetic val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

.field final synthetic val$invokeThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iput-object p3, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAccountLogin(Z)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 141
    :try_start_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object p1, p1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->mSpfsCtrl:Lcom/zte/aigc/utils/SharedPreferencesCtrl;

    const-string v1, "u_message"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/zte/aigc/utils/SharedPreferencesCtrl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance v1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;

    invoke-direct {v1, v0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;-><init>(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;)V

    .line 143
    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    invoke-virtual {v2, v1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->getOpenId(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;)Ljava/lang/String;

    .line 144
    invoke-virtual {v1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$OnGetOAuthTokenListener;->get()Lcn/nubia/oauthsdk/OAuthToken;

    .line 145
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "isAccountLogin"

    if-nez v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v1, v1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->openId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/zte/zteaccount/account/AccountInfo;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zte/zteaccount/account/AccountInfo;

    if-eqz p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v1, v1, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->openId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/zte/zteaccount/account/AccountInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v3, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iget-object v4, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-static {v1, v3, p1, v4}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$100(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    .line 149
    const-string p1, "return cache user info"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$200(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-static {p1, v1, v3, v4}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$300(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    .line 152
    const-string p1, "get user info from service"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    invoke-static {p1}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$200(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;)Lcom/zte/zteaccount/account/AccountInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-static {p1, v1, v3, v4}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$400(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    .line 156
    const-string p1, "userInfo == null || openId is empty get user info from service"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-static {p1, v1, v0, v2}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$500(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 162
    :catch_0
    iget-object p1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$invokeThread:Ljava/lang/Thread;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry$1;->val$accountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    invoke-static {p1, v1, v0, p0}, Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;->access$600(Lcom/zte/zteaccount/account/nubia/NubiaAccountEntry;Ljava/lang/Thread;Lcom/zte/zteaccount/account/AccountInfo;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V

    :goto_0
    return-void
.end method
