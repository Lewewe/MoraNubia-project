.class Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$2;
.super Ljava/lang/Object;
.source "BaseCarouselChildSelectionListener.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$2;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener$2;->this$0:Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;->access$200(Lcn/nubia/redmagickyi/view/gallery/BaseCarouselChildSelectionListener;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 41
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
