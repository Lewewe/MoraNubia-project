.class public abstract Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;
.super Ljava/lang/Object;
.source "AbstractChatRoomImageLoadingListener.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;


# static fields
.field public static final CANCELL:Ljava/lang/String; = "Load was cancelled"

.field public static final SUCCESS:Ljava/lang/String; = "Load was success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    const/4 p2, 0x0

    .line 14
    const-string v0, "Load was cancelled"

    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public final onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 19
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    const-string p2, "Load was success"

    invoke-virtual {p0, p1, p3, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 20
    const-string p3, "Bitmap is null or recycled"

    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onLoadingFailed(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 29
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "Load was failed[Unknown]"

    :goto_1
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcn/nubia/redmagickyi/morachat/main/utils/imageloader/AbstractChatRoomImageLoadingListener;->onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onLoadingOver(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
