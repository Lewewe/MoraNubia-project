.class Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;
.super Ljava/lang/Object;
.source "ARCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->parseMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$3;->val$path:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->ShowBigImage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
