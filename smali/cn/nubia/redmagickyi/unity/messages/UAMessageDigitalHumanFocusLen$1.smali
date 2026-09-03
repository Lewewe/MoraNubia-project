.class Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen$1;
.super Ljava/lang/Object;
.source "UAMessageDigitalHumanFocusLen.java"

# interfaces
.implements Lcom/google/gson/ExclusionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;->toJson()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

.field final synthetic val$fields:[Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;[Ljava/lang/reflect/Field;)V
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

    .line 47
    iput-object p1, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen$1;->this$0:Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen;

    iput-object p2, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen$1;->val$fields:[Ljava/lang/reflect/Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipClass(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public shouldSkipField(Lcom/google/gson/FieldAttributes;)Z
    .locals 5

    .line 51
    iget-object p0, p0, Lcn/nubia/redmagickyi/unity/messages/UAMessageDigitalHumanFocusLen$1;->val$fields:[Ljava/lang/reflect/Field;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 52
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/gson/FieldAttributes;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
