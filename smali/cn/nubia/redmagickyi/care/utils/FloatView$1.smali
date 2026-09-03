.class Lcn/nubia/redmagickyi/care/utils/FloatView$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/care/utils/FloatView;->initFloatView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/care/utils/FloatView;)V
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
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$1;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$1;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$1;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 86
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView$1;->this$0:Lcn/nubia/redmagickyi/care/utils/FloatView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/care/utils/FloatView;->access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method
