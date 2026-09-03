.class Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;
.super Ljava/lang/Object;
.source "RedmagicBroadcastGameAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->onBindViewHolder(Lcn/nubia/redmagickyi/playmate/viewholder/RedmagicBroadcastGameViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;I)V
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

    .line 55
    iput-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    iput p2, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 58
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/DeviceUtils;->SurpportRemagicOSFunction(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object p1, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {p1}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iget-object p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {p0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$000(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p2, Lcn/nubia/redmagickyi/main/R$string;->function_lock_toast:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return p2

    .line 62
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->this$0:Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;->access$100(Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter;)Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$1;->val$position:I

    invoke-interface {v0, p1, p0, p2}, Lcn/nubia/redmagickyi/playmate/adapter/RedmagicBroadcastGameAdapter$RedmagicBroadcastGameInterface;->onBroadcastGameCheckboxTouch(Landroid/view/View;ILandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
