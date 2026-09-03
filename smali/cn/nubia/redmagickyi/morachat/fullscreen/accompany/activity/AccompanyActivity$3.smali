.class Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$3;
.super Ljava/lang/Object;
.source "AccompanyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->toast(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

.field final synthetic val$words:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;Ljava/lang/String;)V
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

    .line 242
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$3;->val$words:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$3;->this$0:Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;->access$000(Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity;)Landroid/app/Activity;

    move-result-object v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/fullscreen/accompany/activity/AccompanyActivity$3;->val$words:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method
