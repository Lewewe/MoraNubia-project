.class Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;
.super Ljava/lang/Object;
.source "ARCameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

.field final synthetic val$grantResults:[I

.field final synthetic val$permissions:[Ljava/lang/String;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;I[Ljava/lang/String;[I)V
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

    .line 334
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    iput p2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->val$requestCode:I

    iput-object p3, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->val$permissions:[Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->val$grantResults:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 337
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;->access$200(Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;)Lcn/nubia/redmagickyi/permission/PermissionUtil;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->this$0:Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity;

    iget v2, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->val$requestCode:I

    iget-object v3, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->val$permissions:[Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/ui/ARCameraActivity$6;->val$grantResults:[I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcn/nubia/redmagickyi/permission/PermissionUtil;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    return-void
.end method
