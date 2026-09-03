.class Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;
.super Ljava/lang/Object;
.source "OAuthManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->onCode(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

.field final synthetic val$outBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1005
    iput-object p1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iput-object p2, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;->val$outBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1007
    iget-object v0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    iget-object v0, v0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;->this$0:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;

    iget-object v1, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;->val$outBundle:Landroid/os/Bundle;

    new-instance v2, Lcn/nubia/oauthsdk/response/OAuthResponse;

    iget-object p0, p0, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter$1;->this$1:Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy$CallBackAdapter;

    invoke-direct {v2, p0}, Lcn/nubia/oauthsdk/response/OAuthResponse;-><init>(Lcn/nubia/oauthsdk/IOAuthCallBack;)V

    const/4 p0, 0x0

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;->access$800(Lcom/zte/zteaccount/account/nubia/OAuthManagerProxy;Landroid/os/Bundle;Lcn/nubia/oauthsdk/response/OAuthCallBack;Landroid/content/Context;)V

    return-void
.end method
