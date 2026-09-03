.class Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$2;
.super Ljava/lang/Object;
.source "CarouselLayoutManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->detectOnItemSelectionChanged(FLandroidx/recyclerview/widget/RecyclerView$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

.field final synthetic val$centerItem:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;I)V
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

    .line 422
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$2;->this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    iput p2, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$2;->val$centerItem:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 425
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$2;->this$0:Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;

    iget p0, p0, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager$2;->val$centerItem:I

    invoke-static {v0, p0}, Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;->access$300(Lcn/nubia/redmagickyi/view/gallery/CarouselLayoutManager;I)V

    return-void
.end method
