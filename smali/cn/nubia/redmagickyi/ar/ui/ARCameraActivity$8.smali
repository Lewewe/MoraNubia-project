.class Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$8;
.super Ljava/lang/Object;
.source "ARCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->hideLoadingView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 527
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$8;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 530
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$8;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$600(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Landroid/widget/LinearLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
