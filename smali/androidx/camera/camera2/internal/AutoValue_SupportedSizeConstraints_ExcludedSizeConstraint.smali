.class final Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;
.super Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;
.source "AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint.java"


# instance fields
.field private final affectedApiLevels:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final affectedFormats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final excludedSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Landroid/util/Range;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;-><init>()V

    if-eqz p1, :cond_2

    .line 26
    iput-object p1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    if-eqz p2, :cond_1

    .line 30
    iput-object p2, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    if-eqz p3, :cond_0

    .line 34
    iput-object p3, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    return-void

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null excludedSizes"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null affectedApiLevels"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null affectedFormats"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 66
    :cond_0
    instance-of v1, p1, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 67
    check-cast p1, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;

    .line 68
    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getAffectedFormats()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    .line 69
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getAffectedApiLevels()Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroidx/camera/camera2/internal/SupportedSizeConstraints$ExcludedSizeConstraint;->getExcludedSizes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAffectedApiLevels()Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object p0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    return-object p0
.end method

.method public getAffectedFormats()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object p0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    return-object p0
.end method

.method public getExcludedSizes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    .line 79
    iget-object v0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 81
    iget-object v2, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 83
    iget-object p0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExcludedSizeConstraint{affectedFormats="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedFormats:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", affectedApiLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->affectedApiLevels:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excludedSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/camera/camera2/internal/AutoValue_SupportedSizeConstraints_ExcludedSizeConstraint;->excludedSizes:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
