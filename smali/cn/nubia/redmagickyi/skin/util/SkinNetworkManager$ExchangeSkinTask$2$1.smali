.class Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2$1;
.super Ljava/lang/Object;
.source "SkinNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;->onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;

.field final synthetic val$response:Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
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

    .line 272
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2$1;->this$1:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2$1;->val$response:Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 275
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    .line 276
    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2$1;->val$response:Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;->onExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2$1;->this$1:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->access$700(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)V

    return-void
.end method
