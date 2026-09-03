.class public Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;
.super Ljava/lang/Object;
.source "ChatImageSize.java"


# instance fields
.field private mHeight:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mWidth:I

    .line 10
    iput p2, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mHeight:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;-><init>(II)V

    .line 15
    iput p3, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinWidth:I

    .line 16
    iput p4, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    .line 28
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mHeight:I

    return p0
.end method

.method public getMinHeight()I
    .locals 0

    .line 45
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinHeight:I

    return p0
.end method

.method public getMinWidth()I
    .locals 0

    .line 36
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinWidth:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    .line 20
    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mWidth:I

    return p0
.end method

.method public setHeight(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mHeight:I

    return-void
.end method

.method public setMinHeight(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;
    .locals 0

    .line 49
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinHeight:I

    return-object p0
.end method

.method public setMinWidth(I)Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;
    .locals 0

    .line 40
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinWidth:I

    return-object p0
.end method

.method public setWidth(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mWidth:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChatImageSize{mWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/ChatImageSize;->mMinHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
