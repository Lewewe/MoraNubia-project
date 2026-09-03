.class Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$1;
.super Landroid/database/ContentObserver;
.source "DigitalHumanProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->registerContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;

.field final synthetic val$alarm_clock:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;Landroid/os/Handler;Landroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;

    iput-object p3, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$1;->val$alarm_clock:Landroid/net/Uri;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 86
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "RedmagickyiProvider received. uri is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DigitalHumanProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$1;->val$alarm_clock:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 89
    sget-object p0, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->ALARM_CLOCK:Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider$URI;->getUri()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/provider/DigitalHumanProvider;->notifyChange(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
