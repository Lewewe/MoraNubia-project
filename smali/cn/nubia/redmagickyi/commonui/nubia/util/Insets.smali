.class public Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;
.super Ljava/lang/Object;
.source "Insets.java"


# static fields
.field public static final NONE:Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;


# instance fields
.field public final bottom:I

.field public final left:I

.field public final right:I

.field public final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;-><init>(IIII)V

    sput-object v0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->NONE:Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->left:I

    .line 40
    iput p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->top:I

    .line 41
    iput p3, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->right:I

    .line 42
    iput p4, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->bottom:I

    return-void
.end method

.method public static of(IIII)Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 59
    sget-object p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->NONE:Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;

    return-object p0

    .line 61
    :cond_0
    new-instance v0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;

    invoke-direct {v0, p0, p1, p2, p3}, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;-><init>(IIII)V

    return-object v0
.end method

.method public static of(Landroid/graphics/Rect;)Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;
    .locals 3

    if-nez p0, :cond_0

    .line 72
    sget-object p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->NONE:Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->of(IIII)Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;

    .line 94
    iget v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->bottom:I

    iget v3, p1, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->bottom:I

    if-eq v2, v3, :cond_2

    return v1

    .line 97
    :cond_2
    iget v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->left:I

    iget v3, p1, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->left:I

    if-eq v2, v3, :cond_3

    return v1

    .line 100
    :cond_3
    iget v2, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->right:I

    iget v3, p1, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->right:I

    if-eq v2, v3, :cond_4

    return v1

    .line 103
    :cond_4
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->top:I

    iget p1, p1, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->top:I

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 112
    iget v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->left:I

    mul-int/lit8 v0, v0, 0x1f

    .line 113
    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 114
    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 115
    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->bottom:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insets{left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/util/Insets;->bottom:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
