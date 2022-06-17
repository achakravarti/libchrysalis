#ifndef __LIBCHRYSALID_INCLUDE_LOG_H__
#define __LIBCHRYSALID_INCLUDE_LOG_H__

#include "ext.h"
#include <syslog.h>

#ifdef __cplusplus
extern "C" {
#endif


/* Protoypes for factory functions. */
extern void     cy_log_init(const char [static 1]);
extern void     cy_log_exit(void);


/* Prototype for mutator function. */
extern CY_HOT void      cy_log_write__(const char [static 1],
                                       const char [static 1], int, int,
                                       const char [static 1], ...);


/* Mutator macros */


/*                                                       %macro:cy_log_emergency
 * __NAME__
 *      cy_log_emergency() - logs emergency message
 */
#define cy_log_emergency(msg, ...)  cy_log_write__(__func__, __FILE__,      \
                                                   __LINE__, LOG_EMERG, msg,\
                                                   ##__VA_ARGS__)


/*                                                           %macro:cy_log_alert
 * __NAME__
 *      cy_log_alert() - logs alert message
 */
#define cy_log_alert(msg, ...)      cy_log_write__(__func__, __FILE__,      \
                                                   __LINE__, LOG_ALERT, msg,\
                                                   ##__VA_ARGS__)


/*                                                            %macro:cy_log_crit
 * __NAME__
 *      cy_log_critical() - logs critical message
 */
#define cy_log_critical(msg, ...)       cy_log_write__(__func__, __FILE__,   \
                                                   __LINE__ LOG_CRIT, msg,   \
                                                   ##__VA_ARGS__)


/*                                                           %macro:cy_log_error
 * __NAME__
 *      cy_log_error() - logs error message
 */
#define cy_log_error(msg, ...)      cy_log_write__(__func__, __FILE__,      \
                                                   __LINE__, LOG_ERR, msg,  \
                                                   ##__VA_ARGS__)


/*                                                         %macro:cy_log_warning
 * __NAME__
 *      cy_log_warning() - logs warning message
 */
#define cy_log_warning(msg, ...)    cy_log_write__(__func__, __FILE__,         \
                                                   __LINE__, LOG_WARNING, msg, \
                                                   ##__VA_ARGS__)


/*                                                          %macro:cy_log_notice
 * __NAME__
 *      cy_log_notice() - logs notice message
 */
#define cy_log_notice(msg, ...)     cy_log_write__(__func__, __FILE__,        \
                                                   __LINE__, LOG_NOTICE, msg, \
                                                   ##__VA_ARGS__)


/*                                                            %macro:cy_log_info
 * __NAME__
 *      cy_log_info() - logs informational message
 */
#define cy_log_info(msg, ...)       cy_log_write__(__func__, __FILE__,      \
                                                   __LINE__, LOG_INFO, msg, \
                                                   ##__VA_ARGS__)


/*                                                           %macro:cy_log_debug
 * __NAME__
 *      cy_log_debug() - logs debugging message
 */
#ifdef NDEBUG
#       define cy_log_debug(msg, ...)
#else
#       define cy_log_debug(msg, ...)   cy_log_write__(__func__, __FILE__,  \
                                                       __LINE__, LOG_DEBUG, \
                                                       msg, ##__VA_ARGS__)
#endif


#ifdef __cplusplus
}
#endif

#endif /* !__LIBCHRYSALID_INCLUDE_LOG_H__ */