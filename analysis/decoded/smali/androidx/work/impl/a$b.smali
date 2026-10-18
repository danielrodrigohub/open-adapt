.class public final Landroidx/work/impl/a$b;
.super Lz0/b;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lz0/b;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Ld1/b;)V
    .locals 1

    check-cast p1, Le1/a;

    const-string v0, "UPDATE workspec SET schedule_requested_at=0 WHERE state NOT IN (2, 3, 5) AND schedule_requested_at=-1 AND interval_duration<>0"

    invoke-virtual {p1, v0}, Le1/a;->k(Ljava/lang/String;)V

    return-void
.end method
