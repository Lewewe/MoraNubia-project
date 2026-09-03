.class Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2$1;
.super Ljava/lang/Object;
.source "AchievementNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;->onSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;

.field final synthetic val$response:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V
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

    .line 240
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2$1;->this$1:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;

    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2$1;->val$response:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
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

    .line 244
    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2$1;->val$response:Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;

    invoke-interface {v1, v2}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$Callback;->onReceiveSuccess(Lcn/nubia/redmagickyi/achievement/network/model/AchievementLoadResponse;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2$1;->this$1:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;

    iget-object p0, p0, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask$2;->this$0:Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;

    invoke-static {p0}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;->access$800(Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$ReceiveAchievementTask;)V

    return-void
.end method
