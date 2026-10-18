.class public final Lk1/n;
.super Lk1/r;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/n$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lk1/n$a;)V
    .locals 2

    iget-object v0, p1, Lk1/r$a;->a:Ljava/util/UUID;

    iget-object v1, p1, Lk1/r$a;->b:Lt1/o;

    iget-object p1, p1, Lk1/r$a;->c:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1, p1}, Lk1/r;-><init>(Ljava/util/UUID;Lt1/o;Ljava/util/Set;)V

    return-void
.end method
