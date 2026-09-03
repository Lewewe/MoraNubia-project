.class Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;
.super Ljava/lang/Object;
.source "SkinNetworkManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/skin/network/manager/SkinExchangeManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReceive error, reason is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$200()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;

    .line 288
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;->onExchangeError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 290
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->access$800(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 292
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->toast(I)V

    goto :goto_2

    .line 293
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    .line 294
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/16 v1, 0x99

    if-eq v0, v1, :cond_4

    .line 295
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/16 v1, 0x9a

    if-eq v0, v1, :cond_4

    .line 297
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/16 v1, 0x9c

    if-eq v0, v1, :cond_4

    .line 298
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result v0

    const/16 v1, 0x9d

    if-eq v0, v1, :cond_4

    .line 299
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    const/16 v0, 0x9e

    if-eq p1, v0, :cond_4

    .line 300
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->toast(I)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 302
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 303
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->toast(I)V

    .line 305
    :cond_4
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->access$700(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V
    .locals 6

    .line 263
    const-string v0, "onReceive success"

    invoke-static {v0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;->access$300(Ljava/lang/String;)V

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-static {v2}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->access$600(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 266
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

    .line 267
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$Callback;->onExchangeSuccess(Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    goto :goto_0

    .line 269
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;->this$0:Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;->access$700(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask;)V

    goto :goto_1

    .line 272
    :cond_1
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2$1;

    invoke-direct {v5, p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2$1;-><init>(Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$ExchangeSkinTask$2;Lcn/nubia/redmagickyi/skin/network/model/SkinExchangeResponse;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
