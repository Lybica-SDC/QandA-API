const router = require('express').Router();
const controller = require('./controller');

router.get('/qa/questions', controller.fetchQuestions);
router.get('/qa/questions/:question_id/answers', controller.fetchAnswers);

router.post('/qa/questions/', controller.addQuestion);
router.post('/qa/questions/:question_id/answers', controller.addAnswer);

router.put('/qa/questions/:question_id/helpful', controller.updateQuestionHelpful);
router.put('/qa/questions/:question_id/report', controller.reportQuestion);
router.put('/qa/answers/:answer_id/helpful', controller.updateAnswerHelpful);
router.put('/qa/answers/:answer_id/report', controller.reportAnswer);

module.exports = router;
