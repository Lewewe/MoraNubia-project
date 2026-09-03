.class public Lcn/nubia/redmagickyi/mainpage/wallpaperhub/inspired/util/InspiredThumbnailManager;
.super Ljava/lang/Object;
.source "InspiredThumbnailManager.java"


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "WallpaperThumbnail"

.field private static final TAG:Ljava/lang/String; = "InspiredThumbnailManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbnail(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 18
    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getResName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 20
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getDefaultSkinId()I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getResName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 24
    invoke-static {}, Lcn/nubia/redmagickyi/unity/skin/CommonSkinIDs;->getPresetSkinIds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcn/nubia/redmagickyi/unity/config/SkinConfig;->getResName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WallpaperThumbnail"

    invoke-static {p0, v0, p1}, Lcn/nubia/redmagickyi/unity/util/ResUtil;->getUnityResBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    .line 33
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "background is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InspiredThumbnailManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
