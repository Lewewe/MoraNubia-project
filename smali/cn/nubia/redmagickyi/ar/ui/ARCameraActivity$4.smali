.class Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$4;
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

    .line 220
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 223
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {p0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$000(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)I

    move-result v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$100(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;I)V

    return-void
.end method
