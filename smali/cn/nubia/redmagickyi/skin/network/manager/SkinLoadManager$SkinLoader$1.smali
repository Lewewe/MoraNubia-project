.class Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$1;
.super Ljava/lang/Object;
.source "SkinLoadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/achievement/network/manager/AchievementGetPointManager$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->loadAll(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get achievement point onError, isCanceled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object v1, v1, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {v1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$400(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SkinLoadManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->this$0:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;->access$500(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager;Lcn/nubia/redmagickyi/network/okhttp/exception/OKHttpError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;I)V
    .locals 0

    .line 109
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader$1;->this$1:Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;

    invoke-static {p0, p1, p2}, Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;->access$300(Lcn/nubia/redmagickyi/skin/network/manager/SkinLoadManager$SkinLoader;Ljava/lang/String;I)V

    return-void
.end method
