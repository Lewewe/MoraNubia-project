.class public final synthetic Lcom/zte/regex/Pattern$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/zte/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Lcom/zte/regex/Pattern;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda1;->f$0:Lcom/zte/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/zte/regex/Pattern$$ExternalSyntheticLambda1;->f$0:Lcom/zte/regex/Pattern;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zte/regex/Pattern;->lambda$asPredicate$14$com-zte-regex-Pattern(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
