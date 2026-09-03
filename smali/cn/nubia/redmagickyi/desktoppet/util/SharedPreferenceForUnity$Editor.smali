.class Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;
.super Ljava/lang/Object;
.source "SharedPreferenceForUnity.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Editor"
.end annotation


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private keysModified:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;


# direct methods
.method public constructor <init>(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p2, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    .line 136
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->commit()Z

    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 191
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public commit()Z
    .locals 4

    .line 197
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$100(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 200
    :goto_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v1}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$200(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 202
    iget-object v3, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v3}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$200(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Callback;->onSharedPreferenceChanged(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 176
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 169
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 155
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 162
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 183
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->this$0:Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;

    invoke-static {v0}, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;->access$000(Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->keysModified:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object p0, p0, Lcn/nubia/redmagickyi/desktoppet/util/SharedPreferenceForUnity$Editor;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method
