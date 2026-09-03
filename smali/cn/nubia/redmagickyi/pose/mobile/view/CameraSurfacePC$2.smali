.class Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$2;
.super Ljava/lang/Object;
.source "CameraSurfacePC.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->onPreviewFrame([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 247
    iget-object p0, p0, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC$2;->this$0:Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;->access$002(Lcn/nubia/redmagickyi/pose/mobile/view/CameraSurfacePC;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method
