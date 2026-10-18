.class public final Lu7/a;
.super Ljava/lang/Object;
.source "MigrationPreferenceHelper.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final a:Lu7/a;

.field public static final b:Lfd/h;

.field public static final c:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lu7/a;

    invoke-direct {v0}, Lu7/a;-><init>()V

    sput-object v0, Lu7/a;->a:Lu7/a;

    .line 1
    sget-object v0, Lu7/a$b;->h:Lu7/a$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lu7/a;->b:Lfd/h;

    .line 2
    sget-object v0, Lu7/a$a;->h:Lu7/a$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lu7/a;->c:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
