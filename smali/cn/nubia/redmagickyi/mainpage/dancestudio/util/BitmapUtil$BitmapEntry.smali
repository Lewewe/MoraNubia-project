.class public Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapEntry"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private dst:Landroid/graphics/Rect;

.field private paint:Landroid/graphics/Paint;

.field private src:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 128
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getDst()Landroid/graphics/Rect;
    .locals 0

    .line 144
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->dst:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 0

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->paint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getSrc()Landroid/graphics/Rect;
    .locals 0

    .line 136
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->src:Landroid/graphics/Rect;

    return-object p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setDst(Landroid/graphics/Rect;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->dst:Landroid/graphics/Rect;

    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public setSrc(Landroid/graphics/Rect;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/BitmapUtil$BitmapEntry;->src:Landroid/graphics/Rect;

    return-void
.end method
