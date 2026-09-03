.class Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;
.super Ljava/lang/Object;
.source "AchievementNetworkManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/network/manager/AchievementReceiveManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 255
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

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$400()Ljava/util/Map;

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

    check-cast v1, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

    .line 257
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;->onReceiveError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    goto :goto_1

    .line 259
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->access$900(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 261
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$300(I)V

    goto :goto_2

    .line 262
    :cond_2
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    .line 263
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$300(I)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 265
    invoke-virtual {p1}, Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;->getType()I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    .line 266
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->morachat_fs_chat_network_error_message:I

    invoke-static {p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$300(I)V

    .line 268
    :cond_4
    :goto_2
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->access$800(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)V

    return-void
.end method

.method public onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
    .locals 6

    .line 231
    const-string v0, "onReceive success"

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$200(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-static {v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->access$700(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 234
    invoke-static {}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;->access$400()Ljava/util/Map;

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

    check-cast v1, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;

    .line 235
    invoke-interface {v1, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;->onReceiveSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->access$800(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)V

    goto :goto_1

    .line 240
    :cond_1
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2$1;

    invoke-direct {v5, p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2$1;-><init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method
