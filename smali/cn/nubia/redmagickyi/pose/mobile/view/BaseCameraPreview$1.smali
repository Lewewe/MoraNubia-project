.class Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview$1;
.super Ljava/lang/Object;
.source "BaseCameraPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    invoke-static {v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->access$000(Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview$1;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/BaseCameraPreview;->hideCameraIconUI(Z)V

    :cond_0
    return-void
.end method
