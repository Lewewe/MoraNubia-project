.class Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;
.super Ljava/lang/Object;
.source "AlarmWeekAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/alarm/viewholder/AlarmWeekViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;I)V
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

    .line 63
    iput-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;->this$0:Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;->access$000(Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter;)Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;

    move-result-object p1

    iget p0, p0, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$1;->val$position:I

    invoke-interface {p1, p0}, Lcn/nubia/redmagickyi/alarm/adapter/AlarmWeekAdapter$AlarmWeekClickInterface;->onWeekClick(I)V

    :cond_0
    return-void
.end method
