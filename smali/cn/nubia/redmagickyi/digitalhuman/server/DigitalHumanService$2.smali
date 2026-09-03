.class Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$2;
.super Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;
.source "DigitalHumanService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 426
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-direct {p0}, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager$AIAssistantContentObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 429
    sget-object p1, Lcn/nubia/redmagickyi/digitalhuman/utils/AIAssistantSettingsManager;->URI_DIGITAL_HUMAN:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 431
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->updateMuteState()V

    :cond_0
    return-void
.end method
