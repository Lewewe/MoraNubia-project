.class Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;
.super Ljava/lang/Object;
.source "AutoMirrorTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$000(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$100(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$100(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$100(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$200(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$200(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$200(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$300(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$300(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    .line 83
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView$1;->this$0:Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->access$300(Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/rtl/AutoMirrorTextView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
