.class public final Llb/c;
.super Ljava/lang/Object;
.source "TelemetryApi.kt"


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field public static final a:Llb/c;

.field public static final b:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Llb/c;

    invoke-direct {v0}, Llb/c;-><init>()V

    sput-object v0, Llb/c;->a:Llb/c;

    sget-object v0, Llb/c$a;->h:Llb/c$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Llb/c;->b:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
