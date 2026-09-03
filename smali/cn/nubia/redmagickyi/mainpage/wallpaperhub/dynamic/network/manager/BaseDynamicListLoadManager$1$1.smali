.class Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;
.super Ljava/lang/Object;
.source "BaseDynamicListLoadManager.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/imageloader/ImageLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;->preloadThumbnail(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;

.field final synthetic val$finalI:I

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;Ljava/util/List;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    iput-object p1, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->this$1:Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1;

    iput-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$list:Ljava/util/List;

    iput p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$finalI:I

    iput-object p4, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "preload "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$list:Ljava/util/List;

    iget p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$finalI:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileMd5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " complete"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicListLoadManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "preload "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$list:Ljava/util/List;

    iget p3, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$finalI:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/bean/DynamicBean;->getFileMd5()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " failed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DynamicListLoadManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p0, p0, Lcn/nubia/redmagickyi/mainpage/wallpaperhub/dynamic/network/manager/BaseDynamicListLoadManager$1$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
