.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;
.super Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;
.source "InspiredOnlineDataManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager<",
        "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/manager/BaseWallPaperOnlineDataManager;-><init>()V

    .line 17
    const-string v0, "InspiredOnlineDataManager"

    iput-object v0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;
    .locals 1

    .line 22
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;-><init>()V

    sput-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;

    .line 25
    :cond_0
    sget-object v0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->instance:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;

    return-object v0
.end method


# virtual methods
.method public parseWallPaperListResponse(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/main/network/model/WallPaperListLoadResponse;",
            ")",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateWallPaperList(ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;

    .line 31
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v4

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v5

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v4

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getSkinId()I

    move-result v5

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/skin/network/bean/SkinOnlineBean$Skin;->getReceiveState()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {v3, v4, v5, v6, v2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/bean/InspiredBean;-><init>(IILjava/lang/String;Z)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updateWallPaperList complete, size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/network/manager/InspiredOnlineDataManager;->queryTotalWallPaper()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InspiredOnlineDataManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
