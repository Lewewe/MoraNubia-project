.class Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;
.super Ljava/lang/Object;
.source "AchievementAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/achievement/viewholder/AchievementViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastEventAction:I

.field final synthetic this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

.field final synthetic val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;I)V
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

    .line 103
    iput-object p1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    iput-object p2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    iput p3, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 104
    iput p1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->lastEventAction:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 107
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->lastEventAction:I

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 108
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$000(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)I

    move-result v0

    .line 109
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-static {v1}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$100(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 111
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$102(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;I)I

    .line 112
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$002(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;I)I

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    iget v2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->val$position:I

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$002(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;I)I

    .line 115
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    iget-object v2, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->val$bean:Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/achievement/network/bean/AchievementOnlineBean$Task;->getAchievementId()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$102(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;I)I

    .line 117
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    const-string v2, "playing"

    invoke-virtual {v1, v0, v2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$000(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$200(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->this$0:Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;->access$200(Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter;)Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$AchievementClickInterface;->onAchievementItemClick(Landroid/view/View;I)V

    .line 123
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcn/nubia/redmagickyi/achievement/adapter/AchievementAdapter$1;->lastEventAction:I

    const/4 p0, 0x0

    return p0
.end method
