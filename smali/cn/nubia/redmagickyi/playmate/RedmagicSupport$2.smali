.class Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;
.super Ljava/lang/Object;
.source "RedmagicSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

.field final synthetic val$finalGamePosition:I

.field final synthetic val$finalGameY:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 209
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    iput p2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;->val$finalGameY:I

    iput p3, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;->val$finalGamePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->access$000(Lcn/nubia/redmagickyi/playmate/RedmagicSupport;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;->val$finalGameY:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 213
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;->this$0:Lcn/nubia/redmagickyi/playmate/RedmagicSupport;

    iget p0, p0, Lcn/nubia/redmagickyi/playmate/RedmagicSupport$2;->val$finalGamePosition:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p0, v1}, Lcn/nubia/redmagickyi/playmate/RedmagicSupport;->onSupportGameClick(Landroid/view/View;IZ)V

    return-void
.end method
