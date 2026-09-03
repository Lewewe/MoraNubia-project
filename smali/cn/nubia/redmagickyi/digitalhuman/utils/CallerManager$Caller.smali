.class Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;
.super Ljava/lang/Object;
.source "CallerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Caller"
.end annotation


# instance fields
.field private active:Z

.field private pid:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->pid:I

    .line 47
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->active:Z

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;)I
    .locals 0

    .line 41
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->pid:I

    return p0
.end method

.method static synthetic access$100(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->active:Z

    return p0
.end method

.method static synthetic access$102(Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;Z)Z
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->active:Z

    return p1
.end method


# virtual methods
.method public getPid()I
    .locals 0

    .line 51
    iget p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->pid:I

    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->active:Z

    return p0
.end method

.method public setActive(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->active:Z

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcn/nubia/redmagickyi/digitalhuman/utils/CallerManager$Caller;->pid:I

    return-void
.end method
