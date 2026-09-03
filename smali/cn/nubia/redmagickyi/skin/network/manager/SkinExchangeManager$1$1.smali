.class Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;
.super Ljava/lang/Object;
.source "SkinExchangeManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->onSuccessInMainThread(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

.field final synthetic val$response:Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

.field final synthetic val$skin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
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

    .line 64
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->val$skin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    iput-object p3, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->val$response:Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$402(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    .line 88
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object v0, v0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$402(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinDetailManager;

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 69
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->val$skin:Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    invoke-static {v0, v2, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 71
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->val$response:Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p0

    invoke-interface {p0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object p1, p1, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$1;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager;)Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;

    move-result-object p0

    invoke-interface {p0, v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;->onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    :cond_2
    :goto_0
    return-void
.end method
