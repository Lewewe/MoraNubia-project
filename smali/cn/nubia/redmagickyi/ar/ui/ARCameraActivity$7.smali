.class Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;
.super Ljava/lang/Object;
.source "ARCameraActivity.java"

# interfaces
.implements Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$OnBigImageOpListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->ShowBigImage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

.field final synthetic val$bm:Landroid/graphics/Bitmap;

.field final synthetic val$mainview:Landroid/view/View;

.field final synthetic val$rota:I

.field final synthetic val$rotaByPhotoNow:I

.field final synthetic val$tempBm:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;Landroid/graphics/Bitmap;IILandroid/graphics/Bitmap;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 395
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$bm:Landroid/graphics/Bitmap;

    iput p3, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$rota:I

    iput p4, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$rotaByPhotoNow:I

    iput-object p5, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$tempBm:Landroid/graphics/Bitmap;

    iput-object p6, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$mainview:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBigImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 398
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$bm:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getRota()I
    .locals 0

    .line 403
    iget p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$rota:I

    return p0
.end method

.method public isPortrait()I
    .locals 0

    .line 408
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)I

    move-result p0

    return p0
.end method

.method public onAnimationCallback(ZZ)V
    .locals 2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    .line 431
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {p1}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$500(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Landroid/view/SurfaceHolder$Callback;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {p2}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$400(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/unity/view/UnitySurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1, p2, v0, v1, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 432
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$mainview:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$anim;->nubia_activity_open_exit:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$mainview:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    sget p2, Lcn/nubia/redmagickyi/main/R$anim;->nubia_activity_close_enter:I

    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onHideFragment()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$300(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$tempBm:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 420
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$bm:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    .line 423
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public rotaPhoto()I
    .locals 0

    .line 413
    iget p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$7;->val$rotaByPhotoNow:I

    return p0
.end method
