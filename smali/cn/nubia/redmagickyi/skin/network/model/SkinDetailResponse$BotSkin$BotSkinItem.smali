.class public Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;
.super Ljava/lang/Object;
.source "SkinDetailResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BotSkinItem"
.end annotation


# instance fields
.field private file_md5:Ljava/lang/String;

.field private file_size:Ljava/lang/String;

.field private file_url:Ljava/lang/String;

.field private skin_id:I

.field private skin_item_id:I

.field final synthetic this$1:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

.field private thumbnail_url:Ljava/lang/String;

.field private version_code:J


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->this$1:Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFile_md5()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->file_md5:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_size()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->file_size:Ljava/lang/String;

    return-object p0
.end method

.method public getFile_url()Ljava/lang/String;
    .locals 0

    .line 200
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->file_url:Ljava/lang/String;

    return-object p0
.end method

.method public getSkin_id()I
    .locals 0

    .line 176
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->skin_id:I

    return p0
.end method

.method public getSkin_item_id()I
    .locals 0

    .line 168
    iget p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->skin_item_id:I

    return p0
.end method

.method public getThumbnail_url()Ljava/lang/String;
    .locals 0

    .line 192
    iget-object p0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->thumbnail_url:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion_code()J
    .locals 2

    .line 184
    iget-wide v0, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->version_code:J

    return-wide v0
.end method

.method public setFile_md5(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->file_md5:Ljava/lang/String;

    return-void
.end method

.method public setFile_size(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->file_size:Ljava/lang/String;

    return-void
.end method

.method public setFile_url(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->file_url:Ljava/lang/String;

    return-void
.end method

.method public setSkin_id(I)V
    .locals 0

    .line 180
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->skin_id:I

    return-void
.end method

.method public setSkin_item_id(I)V
    .locals 0

    .line 172
    iput p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->skin_item_id:I

    return-void
.end method

.method public setThumbnail_url(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->thumbnail_url:Ljava/lang/String;

    return-void
.end method

.method public setVersion_code(J)V
    .locals 0

    .line 188
    iput-wide p1, p0, Lcn/nubia/redmagickyi/skin/network/model/SkinDetailResponse$BotSkin$BotSkinItem;->version_code:J

    return-void
.end method
