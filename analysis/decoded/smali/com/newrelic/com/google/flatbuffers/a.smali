.class public final synthetic Lcom/newrelic/com/google/flatbuffers/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic a:Lcom/newrelic/com/google/flatbuffers/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/newrelic/com/google/flatbuffers/a;

    invoke-direct {v0}, Lcom/newrelic/com/google/flatbuffers/a;-><init>()V

    sput-object v0, Lcom/newrelic/com/google/flatbuffers/a;->a:Lcom/newrelic/com/google/flatbuffers/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/newrelic/com/google/flatbuffers/Utf8Old;->a()Lcom/newrelic/com/google/flatbuffers/Utf8Old$Cache;

    move-result-object v0

    return-object v0
.end method
