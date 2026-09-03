.class Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$8;
.super Ljava/lang/Object;
.source "DigitalHumanService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/digitalhuman/receiver/DigitalHumanMainReceiver$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->onCreate()V
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

    .line 711
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$8;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDigitalHumanSettingsChanged(Ljava/lang/String;)V
    .locals 2

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDigitalHumanSettingsChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DigitalHumanService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    sget-object v0, Lcn/nubia/redmagickyi/digitalhuman/database/Property;->DIGITAL_HUMAN_SKIN_ID:Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;

    invoke-virtual {v0, p1}, Lcn/nubia/redmagickyi/digitalhuman/database/Property$Integer;->equals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 717
    iget-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$8;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p1}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 718
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService$8;->this$0:Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;->access$100(Lcn/nubia/redmagickyi/digitalhuman/server/DigitalHumanService;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/UnityPreview;->changeUnitySkin()V

    :cond_0
    return-void
.end method
