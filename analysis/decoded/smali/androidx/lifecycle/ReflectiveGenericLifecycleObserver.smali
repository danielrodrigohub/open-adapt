.class Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;
.super Ljava/lang/Object;
.source "ReflectiveGenericLifecycleObserver.java"

# interfaces
.implements Landroidx/lifecycle/n;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final h:Ljava/lang/Object;

.field public final i:Landroidx/lifecycle/a$a;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->h:Ljava/lang/Object;

    .line 3
    sget-object v0, Landroidx/lifecycle/a;->c:Landroidx/lifecycle/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/a;->b(Ljava/lang/Class;)Landroidx/lifecycle/a$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->i:Landroidx/lifecycle/a$a;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->i:Landroidx/lifecycle/a$a;

    iget-object v1, p0, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;->h:Ljava/lang/Object;

    .line 2
    iget-object v2, v0, Landroidx/lifecycle/a$a;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Landroidx/lifecycle/a$a;->a(Ljava/util/List;Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;Ljava/lang/Object;)V

    .line 3
    iget-object v0, v0, Landroidx/lifecycle/a$a;->a:Ljava/util/HashMap;

    sget-object v2, Landroidx/lifecycle/i$b;->ON_ANY:Landroidx/lifecycle/i$b;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Landroidx/lifecycle/a$a;->a(Ljava/util/List;Landroidx/lifecycle/q;Landroidx/lifecycle/i$b;Ljava/lang/Object;)V

    return-void
.end method
