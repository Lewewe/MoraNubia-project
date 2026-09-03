.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;
.super Ljava/lang/Object;
.source "BaseWallPaperController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getWallPaperType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " begin merge into database"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseWallPaperController"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getWallPaperType()I

    move-result v3

    invoke-virtual {v0, v3}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->queryData(I)Ljava/util/List;

    move-result-object v0

    .line 67
    iget-object v3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-virtual {v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getData()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 68
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    .line 74
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;

    .line 75
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getWallpaperId()I

    move-result v9

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->getWallpaperId()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 76
    invoke-virtual {v8}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->isNewAdd()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->setNewAdd(Z)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v6, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/bean/WallPaperBean;->setNewAdd(Z)V

    goto :goto_0

    .line 85
    :cond_3
    iget-object v5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-virtual {v5, v0, v3}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->onMergeComplete(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    :goto_1
    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v0, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    move v0, v4

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 90
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getWallPaperType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " need to merge into database? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_7

    .line 91
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->access$000(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;)Lcn/nubia/redmagickyi/util/ZTETimer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/util/ZTETimer;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_7

    .line 92
    invoke-static {}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->Instance()Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getWallPaperType()I

    move-result v5

    invoke-virtual {v0, v5, v3}, Lcn/nubia/redmagickyi/database/RedMagicWallPaperHubDataManager;->insertData(ILjava/util/List;)V

    .line 94
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->getWallPaperType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " end merge into database"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-static {v0, v4}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->access$102(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;Z)Z

    .line 97
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController$1;->this$0:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;->access$200(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/controller/BaseWallPaperController;)Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;

    move-result-object p0

    invoke-interface {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/inf/DataCallback;->onLoadComplete()V

    return-void
.end method
