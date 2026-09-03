.class Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$1;
.super Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;
.source "ImageHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper;->retrieveImageWhRadioFromMemoryCache(Ljava/lang/String;Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$retrieveCallBack:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$1;->val$retrieveCallBack:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    if-lez p3, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    if-lez p3, :cond_0

    .line 28
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p3, p2

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/high16 p3, -0x40800000    # -1.0f

    move p2, p1

    .line 32
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$1;->val$retrieveCallBack:Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;

    invoke-interface {p0, p2, p3, p1}, Lcn/nubia/redmagickyi/morachat/fullscreen/chat/view/gallery/utils/ImageHelper$RetrieveCallBack;->onRetrieveImageWhRatio(ZFZ)V

    return-void
.end method
