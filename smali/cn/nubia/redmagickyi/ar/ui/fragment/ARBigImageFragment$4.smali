.class Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;
.super Ljava/lang/Object;
.source "ARBigImageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->setEditPhotoIconEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;Z)V
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

    .line 235
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    iput-boolean p2, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$300(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$300(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$400(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->this$0:Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;->access$400(Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/ar/ui/fragment/ARBigImageFragment$4;->val$enable:Z

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_1
    return-void
.end method
